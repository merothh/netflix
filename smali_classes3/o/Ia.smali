.class public final Lo/Ia;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ia$Application;,
        Lo/Ia$StateListAnimator;,
        Lo/Ia$Activity;
    }
.end annotation


# static fields
.field public static final c:Lo/Ia$Activity;

.field private static final e:Lo/Ib;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Ia$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Ia$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Ia;->c:Lo/Ia$Activity;

    .line 69
    new-instance v0, Lo/Ib;

    invoke-direct {v0}, Lo/Ib;-><init>()V

    sput-object v0, Lo/Ia;->e:Lo/Ib;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic c()Lo/Ib;
    .locals 1

    .line 61
    sget-object v0, Lo/Ia;->e:Lo/Ib;

    return-object v0
.end method
