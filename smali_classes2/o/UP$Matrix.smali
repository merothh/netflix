.class public final Lo/UP$Matrix;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Matrix"
.end annotation


# static fields
.field public static final e:Lo/UP$Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Lo/UP$Matrix;

    invoke-direct {v0}, Lo/UP$Matrix;-><init>()V

    sput-object v0, Lo/UP$Matrix;->e:Lo/UP$Matrix;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    return-void
.end method
