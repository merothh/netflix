.class final Lo/Yo$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yo;-><init>(Landroid/view/View;Lo/Ab;Lo/UpdateLock;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Yo;


# direct methods
.method constructor <init>(Lo/Yo;)V
    .locals 0

    iput-object p1, p0, Lo/Yo$5;->a:Lo/Yo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 170
    iget-object v0, p0, Lo/Yo$5;->a:Lo/Yo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lo/Yo;->a(Lo/Yo;ZZLjava/lang/String;ILjava/lang/Object;)V

    .line 171
    iget-object p1, p0, Lo/Yo$5;->a:Lo/Yo;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/Yo;->d(Lo/Yo;I)V

    .line 172
    iget-object p1, p0, Lo/Yo$5;->a:Lo/Yo;

    const-string v1, "restart playback error (retry button)"

    invoke-virtual {p1, v1}, Lo/Yo;->a(Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lo/Yo$5;->a:Lo/Yo;

    invoke-static {p1, v0}, Lo/Yo;->a(Lo/Yo;Z)V

    return-void
.end method
