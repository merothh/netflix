.class public final Lo/ZR$TaskDescription;
.super Lo/ZR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# static fields
.field public static final e:Lo/ZR$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lo/ZR$TaskDescription;

    invoke-direct {v0}, Lo/ZR$TaskDescription;-><init>()V

    sput-object v0, Lo/ZR$TaskDescription;->e:Lo/ZR$TaskDescription;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Lo/ZR;-><init>(Lo/amc;)V

    return-void
.end method
