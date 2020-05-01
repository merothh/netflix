.class public final Lo/DQ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private c:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lo/DQ;->a:I

    .line 29
    sget-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;->b:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;

    iput-object v0, p0, Lo/DQ;->c:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;->c:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;

    iput-object p1, p0, Lo/DQ;->c:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;

    goto :goto_0

    .line 34
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;->b:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;

    iput-object p1, p0, Lo/DQ;->c:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;

    goto :goto_0

    .line 36
    :cond_2
    sget-object p1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;->e:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;

    iput-object p1, p0, Lo/DQ;->c:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;

    :goto_0
    return-void
.end method


# virtual methods
.method public final c()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/DQ;->c:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 28
    iget v0, p0, Lo/DQ;->a:I

    return v0
.end method
