.class public final Lcom/netflix/mediaclient/android/sharing/impl/targets/Snapchat$shareTarget$1$share$1$$special$$inlined$apply$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AdapterViewFlipper$ActionBar$Activity;->d(Lo/AdapterViewFlipper$StateListAnimator;)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Landroid/net/Uri;",
        "Lo/AdapterViewFlipper$Activity;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Intent;

.field final synthetic d:Lo/AdapterViewFlipper$StateListAnimator;

.field final synthetic e:Lo/AdapterViewFlipper$ActionBar$Activity;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lo/AdapterViewFlipper$ActionBar$Activity;Lo/AdapterViewFlipper$StateListAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/sharing/impl/targets/Snapchat$shareTarget$1$share$1$$special$$inlined$apply$lambda$1;->b:Landroid/content/Intent;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/sharing/impl/targets/Snapchat$shareTarget$1$share$1$$special$$inlined$apply$lambda$1;->e:Lo/AdapterViewFlipper$ActionBar$Activity;

    iput-object p3, p0, Lcom/netflix/mediaclient/android/sharing/impl/targets/Snapchat$shareTarget$1$share$1$$special$$inlined$apply$lambda$1;->d:Lo/AdapterViewFlipper$StateListAnimator;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Lo/AdapterViewFlipper$Activity;)Landroid/content/Intent;
    .locals 4

    const-string v0, "uri"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "imageInfo"

    invoke-static {p2, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/netflix/mediaclient/android/sharing/impl/targets/Snapchat$shareTarget$1$share$1$$special$$inlined$apply$lambda$1;->e:Lo/AdapterViewFlipper$ActionBar$Activity;

    iget-object v1, v1, Lo/AdapterViewFlipper$ActionBar$Activity;->d:Lo/Serializable;

    .line 103
    sget-object v2, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {v2}, Lo/WebViewFactoryProvider$TaskDescription;->h()Lo/WebViewFactoryProvider;

    move-result-object v2

    invoke-virtual {v2}, Lo/WebViewFactoryProvider;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 102
    invoke-virtual {v1, v2, p1, v3}, Lo/Serializable;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 106
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 107
    invoke-virtual {v1, v0, p1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 108
    invoke-virtual {p2}, Lo/AdapterViewFlipper$Activity;->e()I

    move-result p1

    const-string v0, "width"

    invoke-virtual {v1, v0, p1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;I)Lcom/netflix/android/org/json/JSONObject;

    .line 109
    invoke-virtual {p2}, Lo/AdapterViewFlipper$Activity;->d()I

    move-result p1

    const-string v0, "height"

    invoke-virtual {v1, v0, p1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;I)Lcom/netflix/android/org/json/JSONObject;

    .line 112
    invoke-virtual {p2}, Lo/AdapterViewFlipper$Activity;->a()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "posX"

    invoke-virtual {v1, v0, p1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 113
    invoke-virtual {p2}, Lo/AdapterViewFlipper$Activity;->c()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "posY"

    invoke-virtual {v1, p2, p1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string p1, "rotation"

    const/4 p2, 0x0

    .line 114
    invoke-virtual {v1, p1, p2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;I)Lcom/netflix/android/org/json/JSONObject;

    .line 115
    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JSONObject().apply {\n   \u2026             }.toString()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    sget-object p2, Lo/AdapterViewFlipper;->b:Lo/AdapterViewFlipper$TaskDescription;

    check-cast p2, Lo/MessagePdu;

    .line 118
    iget-object p2, p0, Lcom/netflix/mediaclient/android/sharing/impl/targets/Snapchat$shareTarget$1$share$1$$special$$inlined$apply$lambda$1;->b:Landroid/content/Intent;

    const-string v0, "sticker"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 69
    check-cast p1, Landroid/net/Uri;

    check-cast p2, Lo/AdapterViewFlipper$Activity;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/android/sharing/impl/targets/Snapchat$shareTarget$1$share$1$$special$$inlined$apply$lambda$1;->a(Landroid/net/Uri;Lo/AdapterViewFlipper$Activity;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
