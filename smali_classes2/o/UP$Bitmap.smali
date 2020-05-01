.class public final Lo/UP$Bitmap;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bitmap"
.end annotation


# static fields
.field public static final a:Lo/UP$Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lo/UP$Bitmap;

    invoke-direct {v0}, Lo/UP$Bitmap;-><init>()V

    sput-object v0, Lo/UP$Bitmap;->a:Lo/UP$Bitmap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    return-void
.end method
