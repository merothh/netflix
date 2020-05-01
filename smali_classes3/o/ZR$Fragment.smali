.class public final Lo/ZR$Fragment;
.super Lo/ZR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fragment"
.end annotation


# static fields
.field public static final c:Lo/ZR$Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Lo/ZR$Fragment;

    invoke-direct {v0}, Lo/ZR$Fragment;-><init>()V

    sput-object v0, Lo/ZR$Fragment;->c:Lo/ZR$Fragment;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v0}, Lo/ZR;-><init>(Lo/amc;)V

    return-void
.end method
