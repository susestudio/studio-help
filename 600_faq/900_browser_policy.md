# Browser Support Policy

We are committed to making SUSE Studio as accessible and consistent as we can. However, it is not practical for us to
support every available operating system and web browser combination. Therefore we have adopted the following graded browser
and operating system support policy, which is inspired by [Yahoo's GBS](http://yuilibrary.com/yui/docs/tutorials/gbs/).

Please note that this does not mean SUSE Studio will only work on A-grade browsers - we expect it to work in all modern
browsers and do make an effort to provide graceful degradation and progressive enhancements. It simply means that
A-grade browsers are what we focus our development and QA efforts on, so those are what we recommend for the optimal
user experience.

**Browser support grades:**

Grade | QA  | Bug priority          | Browser and version combinations                                                                                                                                         |
:----:|:---:|:---------------------:|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
A     |Yes  |Normal                 |Current and previous major releases of Firefox, Firefox ESR (used in SLES/D), Chrome and Internet Explorer.                                                               |
B     |No   |Low, possibly WONT_FIX |Current major release of Safari.                                                                                                                                          |
C     |No   |WONT_FIX               |All browser and version combinations that are not in grades A or B. This includes old versions of A grade browsers and A grade browsers on unsupported operating systems. |

Mobile browsers running on current versions of Android and iOS should generally work as well although certain features
like mouse-over pop-ups will not work on touch devices.

The following table provides an example of the major browser and version combinations, the corresponding graded support,
and their respective release cycles.

<table>
  <thead>
      <tr>
        <th rowspan='2'>Browser</th>
        <th rowspan='2'>Release cycle</th>
        <th colspan='3'>Current major release</th>
        <th colspan='3'>Previous major release</th>
      </tr>
      <tr>
        <th>Grade</th>
        <th>Version</th>
        <th>Date</th>
        <th>Grade</th>
        <th>Version</th>
        <th>Date</th>
      </tr>
    </thead>
  <tr>
    <td>Mozilla Firefox</td>
    <td><a href="https://wiki.mozilla.org/Releases#Previous_Releases">~1 month</a></td>
    <td>A</td>
    <td>18.0</td>
    <td>2013-01-08</td>
    <td>A</td>
    <td>17.0</td>
    <td>2012-11-20</td>
  </tr>
  <tr>
    <td>Mozilla Firefox ESR</td>
    <td><a href="http://www.mozilla.org/en-US/firefox/organizations/faq/">1 year</a></td>
    <td>A</td>
    <td>17.0.2 ESR</td>
    <td>2013-01-08</td>
    <td>A</td>
    <td>10.0.12 ESR</td>
    <td>2013-01-08</td>
  </tr>
  <tr>
    <td>Google Chrome</td>
    <td><a href="http://en.wikipedia.org/wiki/Google_Chrome">1-2 months</a></td>
    <td>A</td>
    <td>23.0.1271</td>
    <td>2012-11-06</td>
    <td>A</td>
    <td>22.0.1229</td>
    <td>2012-09-25</td>
  </tr>
  <tr>
    <td>Microsoft Internet Explorer</td>
    <td><a href="http://en.wikipedia.org/wiki/Internet_Explorer">Not time based</a></td>
    <td>A</td>
    <td>10</td>
    <td>2012-10-26</td>
    <td>A</td>
    <td>9</td>
    <td>2011-03-14</td>
  </tr>
  <tr>
    <td>Apple Safari</td>
    <td><a href="http://en.wikipedia.org/wiki/Safari_(web_browser)">Not time based</a></td>
    <td>B</td>
    <td>6</td>
    <td>2012-07-25</td>
    <td>C</td>
    <td>5</td>
    <td>2010-06-07</td>
  </tr>
</table>

**_The complete table was last updated on 14 January 2013._**
_All dates are in the yyyy-mm-dd format._

The operating systems on which the browsers run is also a factor. We use the same grade system as for the browsers.

**A-grade operating systems:**

* Linux (latest supported SUSE desktop versions) - openSUSE 12.2, SLED11 SP2.
* Microsoft Windows (latest two versions) - Windows 7, Windows 8.

**B-grade operating systems:**

* Apple Mac OS X (latest two versions) - Lion (10.7), Mountain Lion (10.8).

**C-grade operating systems:**

* Everything not in A or B grade.

[Cookies](http://en.wikipedia.org/wiki/HTTP_cookie) and [JavaScript](http://en.wikipedia.org/wiki/JavaScript)
must both be enabled for the site to function properly.

In addition, Adobe Flash Player&reg; must be present for the Testdrive feature to work. Since iOS devices do not include
Flash, Testdrive will not work on these.
