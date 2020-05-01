.class public final Lo/EasyEditSpan;
.super Lo/LineBackgroundSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LineBackgroundSpan<",
        "Lo/LocaleSpan;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)V
    .locals 1

    const-string v0, "touView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lo/LineBackgroundSpan;-><init>(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)V

    iput-object p1, p0, Lo/EasyEditSpan;->d:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lo/LeadingMarginSpan;)V
    .locals 0

    .line 5
    check-cast p1, Lo/LocaleSpan;

    invoke-virtual {p0, p1}, Lo/EasyEditSpan;->b(Lo/LocaleSpan;)V

    return-void
.end method

.method public b(Lo/LocaleSpan;)V
    .locals 2

    const-string v0, "touViewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    move-object v0, p1

    check-cast v0, Lo/LeadingMarginSpan;

    invoke-super {p0, v0}, Lo/LineBackgroundSpan;->b(Lo/LeadingMarginSpan;)V

    .line 9
    iget-object v0, p0, Lo/EasyEditSpan;->d:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    invoke-virtual {p1}, Lo/LocaleSpan;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->setInternationalTransactionMessageVisible(Z)V

    .line 10
    iget-object v0, p0, Lo/EasyEditSpan;->d:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    invoke-virtual {p1}, Lo/LocaleSpan;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->setSchufaTextVisible(Z)V

    .line 11
    iget-object v0, p0, Lo/EasyEditSpan;->d:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    invoke-virtual {p1}, Lo/LocaleSpan;->i()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->setCardChainingDisclosureVisible(Z)V

    return-void
.end method
