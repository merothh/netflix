.class public final Lo/KeyValueListParser;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Lo/JsonToken;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lo/LayoutDirection;

.field private final j:Lo/LauncherIcons;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/LayoutDirection;Lo/JsonToken;Lo/TextClassifierImpl;Lo/TextClassifierService;Lo/LauncherIcons;)V
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSurveySelectorViewModel"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p4, p1, p5}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p2, p0, Lo/KeyValueListParser;->e:Lo/LayoutDirection;

    iput-object p3, p0, Lo/KeyValueListParser;->a:Lo/JsonToken;

    iput-object p6, p0, Lo/KeyValueListParser;->j:Lo/LauncherIcons;

    .line 28
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bp:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/KeyValueListParser;->b:Ljava/lang/String;

    .line 29
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bq:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/KeyValueListParser;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lo/KeyValueListParser;->c:Z

    return v0
.end method

.method public final e()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lo/KeyValueListParser;->a:Lo/JsonToken;

    invoke-virtual {v0}, Lo/JsonToken;->b()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lo/KeyValueListParser;->d:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/KeyValueListParser;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final h()V
    .locals 7

    .line 32
    iget-object v0, p0, Lo/KeyValueListParser;->e:Lo/LayoutDirection;

    invoke-virtual {v0}, Lo/LayoutDirection;->e()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v2

    invoke-virtual {p0}, Lo/KeyValueListParser;->e()Lo/Cloneable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lo/ChangeScroll;->c(Lo/ChangeScroll;Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;ILjava/lang/Object;)V

    return-void
.end method

.method public final i()Lo/LauncherIcons;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/KeyValueListParser;->j:Lo/LauncherIcons;

    return-object v0
.end method
