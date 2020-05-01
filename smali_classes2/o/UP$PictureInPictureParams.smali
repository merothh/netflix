.class public final Lo/UP$PictureInPictureParams;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PictureInPictureParams"
.end annotation


# static fields
.field public static final c:Lo/UP$PictureInPictureParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    new-instance v0, Lo/UP$PictureInPictureParams;

    invoke-direct {v0}, Lo/UP$PictureInPictureParams;-><init>()V

    sput-object v0, Lo/UP$PictureInPictureParams;->c:Lo/UP$PictureInPictureParams;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    return-void
.end method
