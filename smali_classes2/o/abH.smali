.class Lo/abH;
.super Ljava/lang/Object;

# interfaces
.implements Lo/afP$Activity;


# static fields
.field public static final b:Lo/abH;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/abH;

    invoke-direct {v0}, Lo/abH;-><init>()V

    sput-object v0, Lo/abH;->b:Lo/abH;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/CookieManager;)V
    .locals 0

    invoke-virtual {p1}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method
