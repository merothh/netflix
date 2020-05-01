.class public final Lo/Sa$ActionBar;
.super Lo/TimeUnit;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Sa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field public d:Lo/ImageSwitcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lo/TimeUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Lo/ImageSwitcher;
    .locals 2

    .line 24
    iget-object v0, p0, Lo/Sa$ActionBar;->d:Lo/ImageSwitcher;

    if-nez v0, :cond_0

    const-string v1, "textView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected d(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lo/Sa$ActionBar;->d:Lo/ImageSwitcher;

    return-void
.end method
