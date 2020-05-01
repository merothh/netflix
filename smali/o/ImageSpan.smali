.class public final Lo/ImageSpan;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)Lo/LineBackgroundSpan;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;",
            ")",
            "Lo/LineBackgroundSpan<",
            "Lo/ForegroundColorSpan;",
            ">;"
        }
    .end annotation

    const-string v0, "touView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lo/LineBackgroundSpan;

    invoke-direct {v0, p1}, Lo/LineBackgroundSpan;-><init>(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)V

    return-object v0
.end method

.method public final e(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)Lo/EasyEditSpan;
    .locals 1

    const-string v0, "touView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lo/EasyEditSpan;

    invoke-direct {v0, p1}, Lo/EasyEditSpan;-><init>(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)V

    return-object v0
.end method
