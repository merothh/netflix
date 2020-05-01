.class public final Lo/RecoverySession;
.super Lo/FillContext;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RecoverySession$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/FillContext<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo/RecoverySession$TaskDescription;


# instance fields
.field private final c:Lo/TextInputTimePickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/RecoverySession$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/RecoverySession$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/RecoverySession;->a:Lo/RecoverySession$TaskDescription;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lo/RecoverySession;->a:Lo/RecoverySession$TaskDescription;

    invoke-virtual {v0}, Lo/RecoverySession$TaskDescription;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Lo/FillContext;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;ILo/amc;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "videos"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const-string p1, "isRestricted"

    aput-object p1, v0, v1

    .line 16
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string v0, "PQLHelper.create(\n      \u2026Leafs.IS_RESTRICTED\n    )"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/RecoverySession;->c:Lo/TextInputTimePickerView;

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/TableLayout;Lo/TextClock;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lo/RecoverySession;->d(Lo/TableLayout;Lo/TextClock;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "queries"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lo/RecoverySession;->c:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(Lo/TableLayout;Lo/TextClock;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TableLayout<",
            "*>;",
            "Lo/TextClock;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const-string v0, "modelProxy"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lo/RecoverySession;->c:Lo/TextInputTimePickerView;

    invoke-interface {p1, p2}, Lo/TableLayout;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object p1

    instance-of p2, p1, Lo/agg;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lo/agg;

    if-eqz p1, :cond_1

    .line 33
    invoke-interface {p1}, Lo/agg;->bx()Ljava/lang/Boolean;

    move-result-object v0

    :cond_1
    return-object v0
.end method
