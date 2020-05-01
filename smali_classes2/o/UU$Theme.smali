.class public final Lo/UU$Theme;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Theme"
.end annotation


# instance fields
.field private final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    iput p1, p0, Lo/UU$Theme;->a:F

    return-void
.end method


# virtual methods
.method public final d()F
    .locals 1

    .line 134
    iget v0, p0, Lo/UU$Theme;->a:F

    return v0
.end method
