.class Lo/nc$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zQ$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nc;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/nc;


# direct methods
.method constructor <init>(Lo/nc;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lo/nc$2;->d:Lo/nc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lo/nc$2;->d:Lo/nc;

    invoke-static {v0, p1, p2}, Lo/nc;->a(Lo/nc;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    return-void
.end method
