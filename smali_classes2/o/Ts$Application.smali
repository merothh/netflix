.class Lo/Ts$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic c:Lo/Ts;

.field private final e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lo/Ts;Landroid/os/Handler;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lo/Ts$Application;->c:Lo/Ts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p2, p0, Lo/Ts$Application;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lo/Ts$Application;I)V
    .locals 0

    invoke-direct {p0, p1}, Lo/Ts$Application;->c(I)V

    return-void
.end method

.method private synthetic c(I)V
    .locals 1

    .line 234
    iget-object v0, p0, Lo/Ts$Application;->c:Lo/Ts;

    invoke-static {v0, p1}, Lo/Ts;->a(Lo/Ts;I)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    .line 234
    iget-object v0, p0, Lo/Ts$Application;->e:Landroid/os/Handler;

    new-instance v1, Lo/Tt;

    invoke-direct {v1, p0, p1}, Lo/Tt;-><init>(Lo/Ts$Application;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
