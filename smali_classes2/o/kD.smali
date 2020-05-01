.class public final Lo/kD;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Lo/kD;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lo/kD;

    invoke-direct {v0}, Lo/kD;-><init>()V

    sput-object v0, Lo/kD;->b:Lo/kD;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final e()Z
    .locals 1

    .line 13
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Lo/fs;->b:Lo/fs$Activity;

    invoke-virtual {v0}, Lo/fs$Activity;->d()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
