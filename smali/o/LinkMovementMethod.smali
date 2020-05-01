.class public final Lo/LinkMovementMethod;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final c:Lo/QwertyKeyListener;


# direct methods
.method public constructor <init>(Lo/QwertyKeyListener;)V
    .locals 1

    const-string v0, "koreaCheckboxesView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/LinkMovementMethod;->c:Lo/QwertyKeyListener;

    return-void
.end method


# virtual methods
.method public final c(Lo/SingleLineTransformationMethod;)V
    .locals 2

    const-string v0, "koreaCheckboxesViewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lo/LinkMovementMethod;->c:Lo/QwertyKeyListener;

    invoke-virtual {p1}, Lo/SingleLineTransformationMethod;->d()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/QwertyKeyListener;->setAllCheckBoxText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lo/LinkMovementMethod;->c:Lo/QwertyKeyListener;

    invoke-virtual {p1}, Lo/SingleLineTransformationMethod;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/QwertyKeyListener;->setData(Ljava/util/List;)V

    .line 9
    invoke-virtual {p1}, Lo/SingleLineTransformationMethod;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lo/LinkMovementMethod;->c:Lo/QwertyKeyListener;

    invoke-virtual {p1}, Lo/SingleLineTransformationMethod;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/QwertyKeyListener;->setBottomTermsText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
