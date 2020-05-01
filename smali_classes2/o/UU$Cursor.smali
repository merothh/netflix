.class public final Lo/UU$Cursor;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cursor"
.end annotation


# static fields
.field public static final b:Lo/UU$Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Lo/UU$Cursor;

    invoke-direct {v0}, Lo/UU$Cursor;-><init>()V

    sput-object v0, Lo/UU$Cursor;->b:Lo/UU$Cursor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    return-void
.end method
