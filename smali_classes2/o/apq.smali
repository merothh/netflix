.class public final Lo/apq;
.super Lo/alc;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/apq$StateListAnimator;
    }
.end annotation


# static fields
.field public static final c:Lo/apq$StateListAnimator;


# instance fields
.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/apq$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/apq$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/apq;->c:Lo/apq$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    sget-object v0, Lo/apq;->c:Lo/apq$StateListAnimator;

    check-cast v0, Lo/alj$Application;

    invoke-direct {p0, v0}, Lo/alc;-><init>(Lo/alj$Application;)V

    return-void
.end method
