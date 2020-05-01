.class public final Lo/InternalRecoveryServiceException;
.super Lo/SyncConstValue;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/InternalRecoveryServiceException$Activity;
    }
.end annotation


# static fields
.field public static final d:Lo/InternalRecoveryServiceException$Activity;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveDebugMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final e:Lo/TextInputTimePickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/InternalRecoveryServiceException$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/InternalRecoveryServiceException$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/InternalRecoveryServiceException;->d:Lo/InternalRecoveryServiceException$Activity;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FetchInteractiveDebugMenuItemsTask"

    .line 23
    invoke-direct {p0, v0}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/InternalRecoveryServiceException;->c:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "videos"

    aput-object v1, p1, v0

    .line 34
    iget-object v0, p0, Lo/InternalRecoveryServiceException;->c:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const/4 v0, 0x2

    const-string v1, "interactiveDebugMenuItems"

    aput-object v1, p1, v0

    .line 32
    invoke-static {p1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string v0, "PQLHelper.create(\n      \u2026EBUG_MENU_ITEMS\n        )"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/InternalRecoveryServiceException;->e:Lo/TextInputTimePickerView;

    return-void
.end method

.method private final a(Lcom/google/gson/JsonArray;)V
    .locals 4

    .line 54
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    check-cast p1, Ljava/lang/Iterable;

    .line 84
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 57
    invoke-static {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveDebugMenuItem;->typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/gson/TypeAdapter;->fromJsonTree(Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_0
    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lo/InternalRecoveryServiceException;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pqls"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lo/InternalRecoveryServiceException;->e:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lo/ConfirmationAlreadyPresentingException;Lo/ci;Lo/TextClock;)V
    .locals 1

    const-string v0, "cmpTask"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callbackOnMain"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p3, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lo/InternalRecoveryServiceException;->a:Ljava/util/List;

    .line 68
    sget-object p3, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p3, Lcom/netflix/mediaclient/android/app/Status;

    .line 66
    invoke-interface {p2, p1, p3}, Lo/ci;->r(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(Lo/RecommendationInfo;)V
    .locals 3

    const-string v0, "jsonGraph"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lo/InternalRecoveryServiceException;->d:Lo/InternalRecoveryServiceException$Activity;

    check-cast v0, Lo/MessagePdu;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    .line 48
    iget-object v1, p0, Lo/InternalRecoveryServiceException;->c:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "interactiveDebugMenuItems"

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lo/RecommendationInfo;->c([Ljava/lang/String;)Lo/RecommendationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    check-cast p1, Lo/TwoStatePreference;

    invoke-virtual {p1}, Lo/TwoStatePreference;->a()Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-direct {p0, p1}, Lo/InternalRecoveryServiceException;->a(Lcom/google/gson/JsonArray;)V

    :cond_0
    return-void
.end method

.method public e(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 73
    invoke-interface {p1, v0, p2}, Lo/ci;->r(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
