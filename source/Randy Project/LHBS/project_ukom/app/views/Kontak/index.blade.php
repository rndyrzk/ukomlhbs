@extends("layout.kontak")

@section("content")
  
<!--============================== content =================================-->
      <div id="content"><div class="ic">More Website Templates @ TemplateMonster.com. November19, 2012!</div>
    <div class="container">
          <div class="row">
        <article class="span8">
              <h3>Contact us</h3>
              <div class="inner-1">
            <form id="contact-form">
                  <div class="success"> Contact form submitted! <strong>We will be in touch soon.</strong> </div>
                  <fieldset>
                <div>
                    <label class="name">
                    <input type="text" value="Your name">
                  <br>
                    <span class="error">*This is not a valid name.</span> <span class="empty">*This field is required.</span> </label>
                    </div>
                  <div>
                    <label class="phone">
                    <input type="tel" value="Telephone">
                    <br>
                    <span class="error">*This is not a valid phone number.</span> <span class="empty">*This field is required.</span> </label>
                    </div>
                <div>
                    <label class="email">
                    <input type="email" value="Email">
                    <br>
                    <span class="error">*This is not a valid email address.</span> <span class="empty">*This field is required.</span> </label>
                    </div>
                <div>
                    <label class="message">
                    <textarea>Message</textarea>
                    <br>
                    <span class="error">*The message is too short.</span> <span class="empty">*This field is required.</span> </label>
                    </div>
                <div class="buttons-wrapper"> <a class="btn btn-1" data-type="reset">Clear</a> <a class="btn btn-1" data-type="submit">Send</a></div>
              </fieldset>
                </form>
          </div>
            </article>
        <article class="span4">
              <h3>Contact info</h3>
              <div class="map">
          </div>
              <address class="address-1">
          <strong>Randy Rizki<br>
              Jln. Pengadegan Utara IV<br>
              Jakarta Selatan</strong>
          <div class="overflow"> <span>Freephone:</span>+1 800 559 6580<br>
                <span>Telephone:</span>+1 800 603 6035<br>
                <span>FAX:</span>+1 800 889 9898 <br>
                <span>E-mail:</span> <a href="#" class="mail-1">rndyrzk@gmail.com</a><br>
                <span>Twitter:</span> <a href="#" class="mail-1">@rndyrzk</a></div>
          </address>
            </article>
      </div>
        </div>
  </div>
    </div>
 
 @stop