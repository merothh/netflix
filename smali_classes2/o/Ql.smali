.class public final Lo/Ql;
.super Lcom/netflix/mediaclient/ui/offline/DownloadButton;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ql$ActionBar;
    }
.end annotation


# static fields
.field public static final f:Lo/Ql$ActionBar;


# instance fields
.field private g:Ljava/lang/String;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Ql$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Ql$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/Ql;->f:Lo/Ql$ActionBar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lo/Ql;->i:I

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 30
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aj:I

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadButton_Ab18255"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/Ql;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public f()Lcom/netflix/cl/model/AppView;
    .locals 2

    .line 81
    invoke-virtual {p0}, Lo/Ql;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/netflix/cl/model/AppView;->addNextCachedVideoButton:Lcom/netflix/cl/model/AppView;

    return-object v0

    .line 84
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->f()Lcom/netflix/cl/model/AppView;

    move-result-object v0

    const-string v1, "super.getAppView()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public h()V
    .locals 6

    .line 34
    iget-object v0, p0, Lo/Ql;->g:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 35
    iget v0, p0, Lo/Ql;->i:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    invoke-virtual {p0}, Lo/Ql;->d()Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    move-result-object v3

    const/4 v4, 0x2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v5, Lo/Qj;->e:[I

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ordinal()I

    move-result v3

    aget v3, v5, v3

    if-eq v3, v1, :cond_7

    if-eq v3, v4, :cond_5

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3

    :goto_1
    if-eqz v0, :cond_2

    .line 63
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->gj:I

    goto :goto_2

    .line 65
    :cond_2
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->ak:I

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 56
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->gh:I

    goto :goto_2

    .line 58
    :cond_4
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->nz:I

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 49
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->fU:I

    goto :goto_2

    .line 51
    :cond_6
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->nH:I

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    .line 42
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->gi:I

    goto :goto_2

    .line 44
    :cond_8
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->nw:I

    .line 69
    :goto_2
    iget-object v5, p0, Lo/Ql;->e:Lo/ImageSwitcher;

    if-eqz v5, :cond_a

    if-eqz v0, :cond_9

    new-array v0, v4, [Ljava/lang/Object;

    .line 70
    iget-object v4, p0, Lo/Ql;->g:Ljava/lang/String;

    aput-object v4, v0, v2

    iget v2, p0, Lo/Ql;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lo/aev;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_3

    .line 72
    :cond_9
    invoke-virtual {p0}, Lo/Ql;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 69
    :goto_3
    invoke-virtual {v5, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method public final setEpisodeNumber(I)V
    .locals 0

    .line 27
    iput p1, p0, Lo/Ql;->i:I

    return-void
.end method

.method public final setSeasonNumberAbbreviation(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/Ql;->g:Ljava/lang/String;

    return-void
.end method
