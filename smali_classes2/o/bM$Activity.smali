.class Lo/bM$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/bM$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field private final a:I

.field final synthetic c:Lo/bM;


# direct methods
.method public constructor <init>(Lo/bM;I)V
    .locals 0

    .line 1683
    iput-object p1, p0, Lo/bM$Activity;->c:Lo/bM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1684
    iput p2, p0, Lo/bM$Activity;->a:I

    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    .line 1689
    iget-object v0, p0, Lo/bM$Activity;->c:Lo/bM;

    iget v1, p0, Lo/bM$Activity;->a:I

    invoke-static {v0}, Lo/bM;->a(Lo/bM;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/bM;->e(Lo/bM;ILcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
