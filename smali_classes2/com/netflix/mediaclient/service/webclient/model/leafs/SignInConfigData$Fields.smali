.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Fields"
.end annotation


# instance fields
.field public abAllocations:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "abAllocations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$NmAbConfig;",
            ">;"
        }
    .end annotation
.end field

.field public backAction:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$CachedMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backAction"
    .end annotation
.end field

.field public isPortraitLocked:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$BooleanField;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isPortraitLocked"
    .end annotation
.end field

.field public password:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "password"
    .end annotation
.end field

.field public signupBlocked:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$BooleanField;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signupBlocked"
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

.field public useAndroidNative:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$BooleanField;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "useAndroidNative"
    .end annotation
.end field

.field public useDarkHeader:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$BooleanField;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "useDarkHeader"
    .end annotation
.end field

.field public userLoginId:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userLoginId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
