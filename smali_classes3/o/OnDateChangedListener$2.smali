.class Lo/OnDateChangedListener$2;
.super Lo/Channel;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OnDateChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/OnDateChangedListener;


# direct methods
.method constructor <init>(Lo/OnDateChangedListener;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lo/OnDateChangedListener$2;->d:Lo/OnDateChangedListener;

    invoke-direct {p0}, Lo/Channel;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 102
    invoke-static {}, Lo/OnDateChangedListener;->u()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method
