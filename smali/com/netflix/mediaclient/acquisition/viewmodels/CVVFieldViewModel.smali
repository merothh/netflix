.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;
.super Lo/Emoji;
.source ""


# instance fields
.field private final showCvvOnConfirm:Z

.field private final showCvvTrustMessage:Z


# direct methods
.method public constructor <init>(Lo/SparseRectFArray;Lo/DynamicLayout;ZZLo/FontConfig;)V
    .locals 1

    const-string v0, "formStateChangeListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cvv"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputFieldSetting"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2, p5}, Lo/Emoji;-><init>(Lo/SparseRectFArray;Lo/DynamicLayout;Lo/FontConfig;)V

    iput-boolean p3, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;->showCvvTrustMessage:Z

    iput-boolean p4, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;->showCvvOnConfirm:Z

    return-void
.end method


# virtual methods
.method public final getShowCvvOnConfirm()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;->showCvvOnConfirm:Z

    return v0
.end method

.method public final getShowCvvTrustMessage()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;->showCvvTrustMessage:Z

    return v0
.end method
