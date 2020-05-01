.class Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ErrorCode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;

.field public value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;->this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
