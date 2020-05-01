.class Lo/Qn$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Qn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field c:Z

.field d:Ljava/lang/CharSequence;

.field e:Ljava/lang/CharSequence;

.field final synthetic g:Lo/Qn;


# direct methods
.method constructor <init>(Lo/Qn;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lo/Qn$TaskDescription;->g:Lo/Qn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 108
    iput-object p1, p0, Lo/Qn$TaskDescription;->e:Ljava/lang/CharSequence;

    .line 109
    iput-object p1, p0, Lo/Qn$TaskDescription;->d:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lo/Qn$TaskDescription;->a:Landroid/graphics/Bitmap;

    .line 111
    iput-object p1, p0, Lo/Qn$TaskDescription;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lo/Qn$TaskDescription;->c:Z

    return-void
.end method
