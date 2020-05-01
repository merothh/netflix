.class public final Lo/UP$ClipData;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClipData"
.end annotation


# static fields
.field public static final c:Lo/UP$ClipData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lo/UP$ClipData;

    invoke-direct {v0}, Lo/UP$ClipData;-><init>()V

    sput-object v0, Lo/UP$ClipData;->c:Lo/UP$ClipData;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    return-void
.end method
