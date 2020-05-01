.class public final Lo/SaveInfo;
.super Lo/FillContext;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SaveInfo$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/FillContext<",
        "Lkotlin/Pair<",
        "+",
        "Lo/AQ;",
        "+",
        "Lcom/netflix/mediaclient/android/app/Status;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final d:Lo/SaveInfo$StateListAnimator;


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/SaveInfo$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/SaveInfo$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/SaveInfo;->d:Lo/SaveInfo$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "SetRating_NfRepo"

    const/4 v2, 0x2

    .line 26
    invoke-direct {p0, v1, v0, v2, v0}, Lo/FillContext;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;ILo/amc;)V

    iput-object p1, p0, Lo/SaveInfo;->c:Ljava/lang/String;

    iput p2, p0, Lo/SaveInfo;->e:I

    iput p3, p0, Lo/SaveInfo;->b:I

    return-void
.end method

.method private final a(Lo/AQ;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.falkor.ACTION_NOTIFY_OF_RATINGS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lo/SaveInfo;->c:Ljava/lang/String;

    const-string v2, "extra_video_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 59
    invoke-interface {p1}, Lo/AQ;->getUserThumbRating()I

    move-result p1

    const-string v1, "extra_user_thumb_rating"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Intent(CachedModelProxy.\u2026TING, it.userThumbRating)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    .line 63
    sget-object p1, Lo/SaveInfo;->d:Lo/SaveInfo$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    goto :goto_0

    .line 65
    :cond_0
    sget-object p1, Lo/SaveInfo;->d:Lo/SaveInfo$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic a(Lo/TableLayout;Lo/TextClock;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lo/SaveInfo;->c(Lo/TableLayout;Lo/TextClock;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;)V
    .locals 3
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

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    .line 31
    iget-object v1, p0, Lo/SaveInfo;->c:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "setThumbRating"

    aput-object v2, v0, v1

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "PQLHelper.create(FalkorB\u2026OS, id, \"setThumbRating\")"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Lo/TableLayout;Lo/TextClock;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TableLayout<",
            "*>;",
            "Lo/TextClock;",
            ")",
            "Lkotlin/Pair<",
            "Lo/AQ;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ">;"
        }
    .end annotation

    const-string v0, "modelProxy"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "videos"

    aput-object v1, p2, v0

    .line 48
    iget-object v0, p0, Lo/SaveInfo;->c:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    const-string v1, "summary"

    aput-object v1, p2, v0

    invoke-static {p2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/TableLayout;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object p1

    instance-of p2, p1, Lo/AQ;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lo/AQ;

    .line 50
    invoke-direct {p0, p1}, Lo/SaveInfo;->a(Lo/AQ;)V

    .line 52
    new-instance p2, Lkotlin/Pair;

    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-direct {p2, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public e()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    new-instance v1, Lo/adt$Activity;

    iget v2, p0, Lo/SaveInfo;->e:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "param"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lo/adt$Activity;

    iget v2, p0, Lo/SaveInfo;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    check-cast v0, Ljava/util/List;

    return-object v0
.end method
