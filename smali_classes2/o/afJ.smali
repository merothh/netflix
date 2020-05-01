.class public interface abstract Lo/afJ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lo/afJ;

.field public static final c:Lo/afJ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lo/afJ$2;

    invoke-direct {v0}, Lo/afJ$2;-><init>()V

    sput-object v0, Lo/afJ;->a:Lo/afJ;

    .line 42
    new-instance v0, Lo/afJ$4;

    invoke-direct {v0}, Lo/afJ$4;-><init>()V

    sput-object v0, Lo/afJ;->c:Lo/afJ;

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()J
.end method
