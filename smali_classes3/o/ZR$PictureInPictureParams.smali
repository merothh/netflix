.class public final Lo/ZR$PictureInPictureParams;
.super Lo/ZR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PictureInPictureParams"
.end annotation


# static fields
.field public static final e:Lo/ZR$PictureInPictureParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lo/ZR$PictureInPictureParams;

    invoke-direct {v0}, Lo/ZR$PictureInPictureParams;-><init>()V

    sput-object v0, Lo/ZR$PictureInPictureParams;->e:Lo/ZR$PictureInPictureParams;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0}, Lo/ZR;-><init>(Lo/amc;)V

    return-void
.end method
