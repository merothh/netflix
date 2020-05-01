.class Lo/acP$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/acP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic b:Lo/acP;


# direct methods
.method private constructor <init>(Lo/acP;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lo/acP$TaskDescription;->b:Lo/acP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/acP;Lo/acP$4;)V
    .locals 0

    .line 252
    invoke-direct {p0, p1}, Lo/acP$TaskDescription;-><init>(Lo/acP;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 256
    iget-object p1, p0, Lo/acP$TaskDescription;->b:Lo/acP;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lo/acP;->f:Z

    .line 257
    invoke-virtual {p1}, Lo/acP;->a()V

    return-void
.end method
