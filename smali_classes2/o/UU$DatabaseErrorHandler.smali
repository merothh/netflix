.class public final Lo/UU$DatabaseErrorHandler;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DatabaseErrorHandler"
.end annotation


# static fields
.field public static final d:Lo/UU$DatabaseErrorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    new-instance v0, Lo/UU$DatabaseErrorHandler;

    invoke-direct {v0}, Lo/UU$DatabaseErrorHandler;-><init>()V

    sput-object v0, Lo/UU$DatabaseErrorHandler;->d:Lo/UU$DatabaseErrorHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    return-void
.end method