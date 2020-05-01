.class public abstract Lo/LeadingMarginSpan;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

.field private final h:Lo/IconMarginSpan;


# direct methods
.method public constructor <init>(Lo/IconMarginSpan;Lo/LineHeightSpan;)V
    .locals 1

    const-string v0, "parsedData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touSettingsFactory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/LeadingMarginSpan;->h:Lo/IconMarginSpan;

    .line 13
    iget-object p1, p0, Lo/LeadingMarginSpan;->h:Lo/IconMarginSpan;

    invoke-virtual {p1}, Lo/IconMarginSpan;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/LineHeightSpan;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    move-result-object p1

    iput-object p1, p0, Lo/LeadingMarginSpan;->e:Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    .line 15
    iget-object p1, p0, Lo/LeadingMarginSpan;->h:Lo/IconMarginSpan;

    invoke-virtual {p1}, Lo/IconMarginSpan;->a()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/LeadingMarginSpan;->c:Z

    .line 17
    iget-boolean p1, p0, Lo/LeadingMarginSpan;->c:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/LeadingMarginSpan;->e:Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lo/LeadingMarginSpan;->a:Z

    .line 19
    iget-object p1, p0, Lo/LeadingMarginSpan;->h:Lo/IconMarginSpan;

    invoke-virtual {p1}, Lo/IconMarginSpan;->b()Z

    move-result p1

    iput-boolean p1, p0, Lo/LeadingMarginSpan;->d:Z

    .line 21
    iget-object p1, p0, Lo/LeadingMarginSpan;->h:Lo/IconMarginSpan;

    invoke-virtual {p1}, Lo/IconMarginSpan;->j()Z

    move-result p1

    iput-boolean p1, p0, Lo/LeadingMarginSpan;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final b(Z)V
    .locals 1

    .line 32
    iget-object v0, p0, Lo/LeadingMarginSpan;->h:Lo/IconMarginSpan;

    invoke-virtual {v0}, Lo/IconMarginSpan;->h()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/BooleanField;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lo/LeadingMarginSpan;->c:Z

    return v0
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public final c(Z)V
    .locals 1

    .line 26
    iget-object v0, p0, Lo/LeadingMarginSpan;->h:Lo/IconMarginSpan;

    invoke-virtual {v0}, Lo/IconMarginSpan;->a()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/BooleanField;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected final e()Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/LeadingMarginSpan;->e:Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lo/LeadingMarginSpan;->d:Z

    return v0
.end method

.method public final g()Z
    .locals 2

    .line 24
    iget-object v0, p0, Lo/LeadingMarginSpan;->h:Lo/IconMarginSpan;

    invoke-virtual {v0}, Lo/IconMarginSpan;->a()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/BooleanField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final i()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lo/LeadingMarginSpan;->b:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lo/LeadingMarginSpan;->a:Z

    return v0
.end method
