.class public final Lo/ZR$SharedElementCallback;
.super Lo/ZR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedElementCallback"
.end annotation


# static fields
.field public static final e:Lo/ZR$SharedElementCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Lo/ZR$SharedElementCallback;

    invoke-direct {v0}, Lo/ZR$SharedElementCallback;-><init>()V

    sput-object v0, Lo/ZR$SharedElementCallback;->e:Lo/ZR$SharedElementCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, v0}, Lo/ZR;-><init>(Lo/amc;)V

    return-void
.end method
