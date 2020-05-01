.class Lo/afD$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/cl/Platform$ErrorReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/afD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/afD;


# direct methods
.method constructor <init>(Lo/afD;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lo/afD$4;->b:Lo/afD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logHandledException(Ljava/lang/String;)V
    .locals 1

    .line 90
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public logHandledException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 100
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
