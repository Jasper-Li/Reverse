.class public Lcom/example/reverse2_1/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private btn_register:Landroid/widget/Button;

.field private edit_sn:Landroid/widget/EditText;

.field private edit_userName:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/example/reverse2_1/MainActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/example/reverse2_1/MainActivity;->edit_userName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/example/reverse2_1/MainActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/example/reverse2_1/MainActivity;->edit_sn:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/example/reverse2_1/MainActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/example/reverse2_1/MainActivity;->checkSN(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/example/reverse2_1/MainActivity;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/example/reverse2_1/MainActivity;->btn_register:Landroid/widget/Button;

    return-object v0
.end method

.method private checkSN(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "sn"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/example/reverse2_1/MainActivity;->setContentView(I)V

    .line 32
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/example/reverse2_1/MainActivity;->setTitle(I)V

    .line 33
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/example/reverse2_1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/reverse2_1/MainActivity;->edit_userName:Landroid/widget/EditText;

    .line 34
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/example/reverse2_1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/reverse2_1/MainActivity;->edit_sn:Landroid/widget/EditText;

    .line 35
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/example/reverse2_1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/reverse2_1/MainActivity;->btn_register:Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lcom/example/reverse2_1/MainActivity;->btn_register:Landroid/widget/Button;

    new-instance v1, Lcom/example/reverse2_1/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/example/reverse2_1/MainActivity$1;-><init>(Lcom/example/reverse2_1/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/example/reverse2_1/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 66
    const/4 v0, 0x1

    return v0
.end method
