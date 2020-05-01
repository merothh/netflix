.class public final Lo/YB$Fragment;
.super Lo/YB;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/YB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fragment"
.end annotation


# static fields
.field public static final e:Lo/YB$Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lo/YB$Fragment;

    invoke-direct {v0}, Lo/YB$Fragment;-><init>()V

    sput-object v0, Lo/YB$Fragment;->e:Lo/YB$Fragment;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, v0}, Lo/YB;-><init>(Lo/amc;)V

    return-void
.end method
