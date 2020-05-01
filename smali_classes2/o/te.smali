.class Lo/te;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/td;

.field private final d:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public constructor <init>(Lo/td;Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/te;->a:Lo/td;

    iput-object p2, p0, Lo/te;->d:Lcom/google/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/te;->a:Lo/td;

    iget-object v1, p0, Lo/te;->d:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0, v1}, Lo/td;->e(Lo/td;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method
