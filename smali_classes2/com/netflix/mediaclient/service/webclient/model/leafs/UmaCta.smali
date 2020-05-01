.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTION_CONNECT_TO_WHATSAPP:Ljava/lang/String; = "CONNECT_TO_WHATSAPP"

.field public static final ACTION_DISMISS:Ljava/lang/String; = "DISMISS"

.field public static final ACTION_NOT_NOW:Ljava/lang/String; = "NOT_NOW"

.field public static final ACTION_PLAN_ACKNOWLEDGE:Ljava/lang/String; = "PLAN_ACKNOWLEDGE"

.field public static final ACTION_PLAN_SELECT:Ljava/lang/String; = "PLAN_SELECT"

.field public static final ACTION_PRICE_ACKNOWLEDGE:Ljava/lang/String; = "PRICE_ACKNOWLEDGE"

.field public static final ACTION_REFER_FRIENDS:Ljava/lang/String; = "REFER_FRIENDS"

.field public static final ACTION_RESTART_MEMBERSHIP:Ljava/lang/String; = "RESTART_MEMBERSHIP"

.field public static final ACTION_RETRY_PAYMENT:Ljava/lang/String; = "RETRY_PAYMENT"

.field public static final ACTION_TOU_AGREE:Ljava/lang/String; = "TOU_AGREE"

.field public static final ACTION_TYPE_APP_REDIRECT:Ljava/lang/String; = "APP_REDIRECT"

.field public static final ACTION_TYPE_BACKGROUND_CALL:Ljava/lang/String; = "BACKGROUND_CALL"

.field public static final ACTION_TYPE_LINK:Ljava/lang/String; = "LINK"

.field public static final ACTION_TYPE_UMS_IMPRESSION:Ljava/lang/String; = "UMS_IMPRESSION"

.field public static final CALLBACK_ACKNOWLEDGED:Ljava/lang/String; = "ACKNOWLEDGED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract action()Ljava/lang/String;
.end method

.method public abstract actionType()Ljava/lang/String;
.end method

.method public abstract autoLogin()Z
.end method

.method public abstract callback()Ljava/lang/String;
.end method

.method public abstract failureMessage()Ljava/lang/String;
.end method

.method public abstract fallbackUrl()Ljava/lang/String;
.end method

.method public abstract openLinkInWebView()Z
.end method

.method public abstract parameters()Ljava/lang/String;
.end method

.method public abstract selected()Z
.end method

.method public abstract successMessage()Ljava/lang/String;
.end method

.method public abstract text()Ljava/lang/String;
.end method

.method public abstract trackingInfo()Ljava/lang/String;
.end method

.method public abstract umsAlertCtaFeedback()Ljava/lang/String;
.end method
