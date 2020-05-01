.class public final Lo/KeyDerivationParams;
.super Lo/FillContext;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/KeyDerivationParams$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/FillContext<",
        "Lo/AD;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lo/KeyDerivationParams$Application;


# instance fields
.field private final e:Lo/TextInputTimePickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/KeyDerivationParams$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/KeyDerivationParams$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/KeyDerivationParams;->b:Lo/KeyDerivationParams$Application;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "FetchLolopi"

    .line 19
    invoke-direct {p0, v2, v0, v1, v0}, Lo/FillContext;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;ILo/amc;)V

    const-string v0, "PQLHelper.create(\n      \u2026.toString()\n            )"

    const/4 v2, 0x1

    const-string v3, "lolopi"

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-nez p1, :cond_0

    new-array p1, v5, [Ljava/lang/Object;

    aput-object v3, p1, v4

    const-string v3, "-1"

    aput-object v3, p1, v2

    .line 38
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    .line 35
    invoke-static {p1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    aput-object p1, v5, v2

    .line 45
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    .line 42
    invoke-static {v5}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    :goto_0
    iput-object p1, p0, Lo/KeyDerivationParams;->e:Lo/TextInputTimePickerView;

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/TableLayout;Lo/TextClock;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lo/KeyDerivationParams;->d(Lo/TableLayout;Lo/TextClock;)Lo/AD;

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

    .line 63
    iget-object v0, p0, Lo/KeyDerivationParams;->e:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(Lo/TableLayout;Lo/TextClock;)Lo/AD;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TableLayout<",
            "*>;",
            "Lo/TextClock;",
            ")",
            "Lo/AD;"
        }
    .end annotation

    const-string v0, "modelProxy"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lo/KeyDerivationParams;->e:Lo/TextInputTimePickerView;

    invoke-interface {p1, p2}, Lo/TableLayout;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object p1

    instance-of p2, p1, Lo/SearchIndexableData;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lo/SearchIndexableData;

    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p1}, Lo/SearchIndexableData;->e()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    instance-of p2, p1, Lo/AD;

    if-nez p2, :cond_2

    move-object p1, v0

    :cond_2
    check-cast p1, Lo/AD;

    return-object p1
.end method

.method public d(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/TextInputTimePickerView;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "queries"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
