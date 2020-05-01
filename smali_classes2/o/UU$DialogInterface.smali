.class public final Lo/UU$DialogInterface;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DialogInterface"
.end annotation


# static fields
.field public static final d:Lo/UU$DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lo/UU$DialogInterface;

    invoke-direct {v0}, Lo/UU$DialogInterface;-><init>()V

    sput-object v0, Lo/UU$DialogInterface;->d:Lo/UU$DialogInterface;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    return-void
.end method
