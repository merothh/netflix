.class final Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/TrackingInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final b:Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver$StateListAnimator;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver$StateListAnimator;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver$StateListAnimator;->b:Lcom/netflix/mediaclient/android/sharing/impl/ShareReceiver$StateListAnimator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "source"

    const-string v2, "osShareSheet"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
