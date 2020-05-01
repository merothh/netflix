.class public final Lo/UP$Cursor;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cursor"
.end annotation


# static fields
.field public static final e:Lo/UP$Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Lo/UP$Cursor;

    invoke-direct {v0}, Lo/UP$Cursor;-><init>()V

    sput-object v0, Lo/UP$Cursor;->e:Lo/UP$Cursor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    return-void
.end method
