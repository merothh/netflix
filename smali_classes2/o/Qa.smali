.class Lo/Qa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final e:Lo/Qa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/Qa;

    invoke-direct {v0}, Lo/Qa;-><init>()V

    sput-object v0, Lo/Qa;->e:Lo/Qa;

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

    invoke-static {p1, p2}, Lo/PY;->c(Landroid/content/DialogInterface;I)V

    return-void
.end method
