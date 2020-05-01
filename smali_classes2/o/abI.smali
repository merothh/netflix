.class public abstract Lo/abI;
.super Lo/Jv;
.source ""


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/util/UUID;

.field private c:Landroid/view/View;

.field private d:Landroid/webkit/WebView;

.field private e:Lo/aby;

.field private g:Lo/abw;

.field private h:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lo/Jv;-><init>()V

    .line 59
    invoke-static {}, Lo/afB;->d()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lo/abI;->b:Ljava/util/UUID;

    return-void
.end method

.method static synthetic b(Lo/abI;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lo/abI;->l()V

    return-void
.end method

.method static synthetic c(Landroid/webkit/CookieManager;)V
    .locals 0

    invoke-static {p0}, Lo/abI;->d(Landroid/webkit/CookieManager;)V

    return-void
.end method

.method private c(Lo/Am;)V
    .locals 0

    .line 373
    invoke-virtual {p1}, Lo/Am;->i()Lo/cz;

    move-result-object p1

    invoke-interface {p1}, Lo/cz;->c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->e()Ljava/lang/String;

    move-result-object p1

    .line 372
    invoke-static {p1}, Lo/cI;->d(Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic c(Lo/abI;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lo/abI;->h:Z

    return p0
.end method

.method private d()V
    .locals 3

    .line 220
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "webSignup"

    const/4 v2, 0x1

    .line 221
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 222
    new-instance v1, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    invoke-direct {v1, v0}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    .line 223
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static synthetic d(Landroid/webkit/CookieManager;)V
    .locals 2

    const-string v0, "https://netflix.com"

    .line 200
    invoke-virtual {p0, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "All the cookies in a string:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebViewAccountActivity"

    invoke-static {v0, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic e(Lo/abI;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lo/abI;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lo/abI;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lo/abI;->h:Z

    return p1
.end method

.method private l()V
    .locals 2

    .line 326
    iget-object v0, p0, Lo/abI;->e:Lo/aby;

    invoke-virtual {v0}, Lo/aby;->e()V

    .line 327
    iget-object v0, p0, Lo/abI;->g:Lo/abw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/abw;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lo/abI;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lo/abI;->g:Lo/abw;

    invoke-virtual {v1}, Lo/abw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a()J
.end method

.method protected a(I)V
    .locals 0

    .line 290
    invoke-virtual {p0, p1}, Lo/abI;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/abI;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Lo/abE;)V
    .locals 1

    const-string p1, "WebViewAccountActivity"

    const-string v0, "UI ready to interact"

    .line 237
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0}, Lo/abI;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p0}, Lo/abI;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p0}, Lo/abI;->e()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    :cond_0
    new-instance p1, Lo/abI$1;

    invoke-direct {p1, p0}, Lo/abI$1;-><init>(Lo/abI;)V

    invoke-virtual {p0, p1}, Lo/abI;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lo/cz;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 311
    invoke-virtual {p0}, Lo/abI;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lo/abI$5;

    invoke-direct {p2, p0}, Lo/abI$5;-><init>(Lo/abI;)V

    invoke-static {p1, p2}, Lo/afP;->c(Landroid/content/Context;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 318
    :cond_0
    invoke-direct {p0}, Lo/abI;->l()V

    :goto_0
    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/Object;
.end method

.method protected c(Z)V
    .locals 3

    .line 256
    iget-boolean v0, p0, Lo/abI;->j:Z

    if-eq p1, v0, :cond_2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebView visibility:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/abI;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewAccountActivity"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lo/abI;->c:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lo/abI;->d:Landroid/webkit/WebView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 260
    iget-boolean p1, p0, Lo/abI;->j:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lo/abI;->j:Z

    :cond_2
    return-void
.end method

.method protected d(Landroid/content/Intent;)V
    .locals 1

    .line 300
    invoke-virtual {p0, p1}, Lo/abI;->startActivity(Landroid/content/Intent;)V

    const-string p1, "WebViewAccountActivity"

    const-string v0, "Removing jumpToSignIn"

    .line 301
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0}, Lo/abI;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p0}, Lo/abI;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p0}, Lo/abI;->e()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 304
    invoke-virtual {p0, p1, p1}, Lo/abI;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 1

    .line 294
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 295
    invoke-static {p1, v0}, Lo/adk;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .line 265
    new-instance v0, Lo/hK;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {p0, v1}, Lo/abI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1, p2}, Lo/hK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 266
    iget-object p1, p0, Lo/abI;->handler:Landroid/os/Handler;

    invoke-static {p0, p1, v0}, Lo/CalendarViewLegacyDelegate;->a(Landroid/content/Context;Landroid/os/Handler;Lo/hK;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object p1

    .line 267
    invoke-virtual {p0, p1}, Lo/abI;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    return-void
.end method

.method protected d(Lo/Am;)V
    .locals 7

    .line 154
    invoke-virtual {p0}, Lo/abI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lo/abI;->b()Ljava/lang/String;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lo/abI;->d:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    .line 162
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v4, 0x0

    .line 163
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 164
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 166
    iget-object v2, p0, Lo/abI;->d:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lo/abI;->c()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "nfandroid"

    invoke-virtual {v2, v5, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lo/abI;->d:Landroid/webkit/WebView;

    iget-object v5, p0, Lo/abI;->e:Lo/aby;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 168
    iget-object v2, p0, Lo/abI;->d:Landroid/webkit/WebView;

    new-instance v5, Lo/abI$4;

    invoke-direct {v5, p0}, Lo/abI$4;-><init>(Lo/abI;)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    iget-object v2, p0, Lo/abI;->b:Ljava/util/UUID;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 185
    new-instance v5, Lo/abw;

    invoke-virtual {p0}, Lo/abI;->o()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v1, v6, v2}, Lo/abw;-><init>(Lo/Am;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lo/abI;->g:Lo/abw;

    const-string v1, "nextUrl"

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Lo/abI;->b()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "://"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    :cond_0
    invoke-virtual {p0}, Lo/abI;->f()Lo/abw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/abw;->d(Ljava/lang/String;)V

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Lo/abI;->g:Lo/abw;

    invoke-virtual {v1}, Lo/abw;->e()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "WebViewAccountActivity"

    const-string v2, "URL: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 196
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/context/NonmemberSharedContext;

    iget-object v3, p0, Lo/abI;->b:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/cl/model/context/NonmemberSharedContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/abI;->a:Ljava/lang/Long;

    .line 197
    invoke-direct {p0}, Lo/abI;->d()V

    .line 199
    sget-object v0, Lo/abG;->e:Lo/abG;

    invoke-static {v0}, Lo/afP;->d(Lo/afP$Activity;)V

    .line 205
    invoke-direct {p0, p1}, Lo/abI;->c(Lo/Am;)V

    .line 207
    iget-object p1, p0, Lo/abI;->d:Landroid/webkit/WebView;

    iget-object v0, p0, Lo/abI;->g:Lo/abw;

    invoke-virtual {v0}, Lo/abw;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string p1, "Adding timeout for webview to load"

    .line 209
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Lo/abI;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 211
    invoke-virtual {p0}, Lo/abI;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p0}, Lo/abI;->e()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0}, Lo/abI;->a()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public abstract e()Ljava/lang/Runnable;
.end method

.method public e(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8

    .line 271
    new-instance v7, Lo/CalendarViewLegacyDelegate$Activity;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {p0, v0}, Lo/abI;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    invoke-virtual {p0, v0}, Lo/abI;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lo/CalendarViewLegacyDelegate$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 272
    iget-object p1, p0, Lo/abI;->handler:Landroid/os/Handler;

    invoke-static {p0, p1, v7}, Lo/CalendarViewLegacyDelegate;->a(Landroid/content/Context;Landroid/os/Handler;Lo/hK;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object p1

    .line 273
    invoke-virtual {p0, p1}, Lo/abI;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    return-void
.end method

.method public f()Lo/abw;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/abI;->g:Lo/abw;

    return-object v0
.end method

.method protected g()V
    .locals 1

    .line 278
    new-instance v0, Lo/abI$3;

    invoke-direct {v0, p0}, Lo/abI$3;-><init>(Lo/abI;)V

    invoke-virtual {p0, v0}, Lo/abI;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h()Landroid/webkit/WebView;
    .locals 1

    .line 75
    iget-object v0, p0, Lo/abI;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 2

    .line 85
    iget-object v0, p0, Lo/abI;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()Lo/aby;
    .locals 1

    .line 113
    new-instance v0, Lo/abI$2;

    invoke-direct {v0, p0, p0}, Lo/abI$2;-><init>(Lo/abI;Lo/abI;)V

    return-object v0
.end method

.method public abstract j()Ljava/lang/Runnable;
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 337
    invoke-virtual {p0}, Lo/abI;->getServiceManager()Lo/Am;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Lo/ys;->a:Lo/ys;

    invoke-virtual {v0, p0}, Lo/ys;->b(Landroid/content/Context;)Lo/afz;

    move-result-object v0

    invoke-virtual {v0}, Lo/afz;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "en"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lo/Jv;->onCreate(Landroid/os/Bundle;)V

    .line 99
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->fB:I

    invoke-virtual {p0, p1}, Lo/abI;->setContentView(I)V

    .line 100
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->jI:I

    invoke-virtual {p0, p1}, Lo/abI;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/abI;->c:Landroid/view/View;

    .line 101
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->rr:I

    invoke-virtual {p0, p1}, Lo/abI;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lo/abI;->d:Landroid/webkit/WebView;

    .line 102
    invoke-virtual {p0}, Lo/abI;->i()Lo/aby;

    move-result-object p1

    iput-object p1, p0, Lo/abI;->e:Lo/aby;

    .line 108
    invoke-static {p0}, Lo/adk;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 357
    invoke-super {p0}, Lo/Jv;->onDestroy()V

    .line 358
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/abI;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    .line 359
    sget-object v0, Lo/abH;->b:Lo/abH;

    invoke-static {v0}, Lo/afP;->d(Lo/afP$Activity;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 364
    invoke-super {p0}, Lo/Jv;->onPause()V

    .line 365
    sget-object v0, Lo/abH;->b:Lo/abH;

    invoke-static {v0}, Lo/afP;->d(Lo/afP$Activity;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 230
    invoke-super {p0}, Lo/Jv;->onStop()V

    .line 231
    invoke-virtual {p0}, Lo/abI;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lo/abI;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lo/abI;->e()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
