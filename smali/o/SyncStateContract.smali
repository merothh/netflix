.class public final Lo/SyncStateContract;
.super Lo/SyncConstValue;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SyncStateContract$StateListAnimator;
    }
.end annotation


# static fields
.field public static final e:Lo/SyncStateContract$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/SyncStateContract$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/SyncStateContract$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/SyncStateContract;->e:Lo/SyncStateContract$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "AgreeTOUTask"

    .line 15
    invoke-direct {p0, v0}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
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

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "agreetou"

    aput-object v2, v0, v1

    .line 22
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "PQLHelper.create(\"user\", \"agreetou\")"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lo/ConfirmationAlreadyPresentingException;Lo/ci;Lo/TextClock;)V
    .locals 0

    const-string p2, "cmpTask"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(Lo/RecommendationInfo;)V
    .locals 1

    const-string v0, "jsonGraph"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object p1, Lo/SyncStateContract;->e:Lo/SyncStateContract$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public e(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method
