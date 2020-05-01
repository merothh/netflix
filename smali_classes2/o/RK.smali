.class Lo/RK;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final a:Lo/RK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/RK;

    invoke-direct {v0}, Lo/RK;-><init>()V

    sput-object v0, Lo/RK;->a:Lo/RK;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p1, p2}, Lo/RL;->e(Landroid/content/DialogInterface;I)V

    return-void
.end method
