.class public final Lo/LocaleSpan;
.super Lo/LeadingMarginSpan;
.source ""


# instance fields
.field private final a:Lo/InputBinding;

.field private final d:Z

.field private final e:Lo/IconMarginSpan;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/IconMarginSpan;Lo/LineHeightSpan;)V
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touSettingsFactory"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p2, p3}, Lo/LeadingMarginSpan;-><init>(Lo/IconMarginSpan;Lo/LineHeightSpan;)V

    iput-object p1, p0, Lo/LocaleSpan;->a:Lo/InputBinding;

    iput-object p2, p0, Lo/LocaleSpan;->e:Lo/IconMarginSpan;

    .line 12
    iget-object p1, p0, Lo/LocaleSpan;->e:Lo/IconMarginSpan;

    invoke-virtual {p1}, Lo/IconMarginSpan;->c()Z

    move-result p1

    iput-boolean p1, p0, Lo/LocaleSpan;->d:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 27
    iget-object v0, p0, Lo/LocaleSpan;->e:Lo/IconMarginSpan;

    invoke-virtual {v0}, Lo/IconMarginSpan;->h()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lo/LocaleSpan;->a:Lo/InputBinding;

    .line 29
    iget-object v1, p0, Lo/LocaleSpan;->e:Lo/IconMarginSpan;

    invoke-virtual {v1}, Lo/IconMarginSpan;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->pL:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->pM:I

    .line 28
    :goto_0
    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 16
    iget-object v0, p0, Lo/LocaleSpan;->a:Lo/InputBinding;

    invoke-virtual {p0}, Lo/LocaleSpan;->e()Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lo/LocaleSpan;->e:Lo/IconMarginSpan;

    invoke-virtual {v1}, Lo/IconMarginSpan;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "minAge"

    .line 19
    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    .line 22
    :cond_0
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "formatter.format()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lo/LocaleSpan;->d:Z

    return v0
.end method
