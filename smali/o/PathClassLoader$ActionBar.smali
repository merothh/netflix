.class Lo/PathClassLoader$ActionBar;
.super Lo/PathClassLoader$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PathClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# instance fields
.field private final e:Z


# direct methods
.method constructor <init>(Lo/PathClassLoader$Application;Z)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lo/PathClassLoader$StateListAnimator;-><init>(Lo/PathClassLoader$Application;)V

    .line 157
    iput-boolean p2, p0, Lo/PathClassLoader$ActionBar;->e:Z

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lo/PathClassLoader$ActionBar;->e:Z

    return v0
.end method
