.class final Lcom/netflix/partner/PServiceCardEventHandler$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/TrackingInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/partner/PServiceCardEventHandler;->b(Lorg/json/JSONObject;)Lcom/netflix/cl/model/android/MinusOneCardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lorg/json/JSONObject;

.field final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/partner/PServiceCardEventHandler$Activity;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/netflix/partner/PServiceCardEventHandler$Activity;->d:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/netflix/partner/PServiceCardEventHandler$Activity;->d:Lorg/json/JSONObject;

    return-object v0
.end method
