.class Lo/bT$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/bT;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/bT;


# direct methods
.method constructor <init>(Lo/bT;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lo/bT$1;->e:Lo/bT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "nf_prepareHelperImpl"

    const-string v1, "ttr timed-out, process any pending requests"

    .line 146
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lo/bT$1;->e:Lo/bT;

    invoke-static {v0}, Lo/bT;->a(Lo/bT;)V

    return-void
.end method
