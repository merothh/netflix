.class public final Lo/Ob$ActionBar;
.super Lo/Ob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# static fields
.field public static final b:Lo/Ob$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lo/Ob$ActionBar;

    invoke-direct {v0}, Lo/Ob$ActionBar;-><init>()V

    sput-object v0, Lo/Ob$ActionBar;->b:Lo/Ob$ActionBar;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0}, Lo/Ob;-><init>(Lo/amc;)V

    return-void
.end method
