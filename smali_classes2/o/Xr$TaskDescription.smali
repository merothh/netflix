.class public final Lo/Xr$TaskDescription;
.super Lo/PowerManagerInternal;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xr;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Xr;


# direct methods
.method constructor <init>(Lo/Xr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lo/Xr$TaskDescription;->d:Lo/Xr;

    invoke-direct {p0}, Lo/PowerManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 174
    iget-object p1, p0, Lo/Xr$TaskDescription;->d:Lo/Xr;

    invoke-virtual {p1}, Lo/Xr;->q()V

    return-void
.end method
